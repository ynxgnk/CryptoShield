//
//  HomeViewController.swift
//  CryptoShield
//
//  Created by Nazar Kopeika on 04.06.2023.
//

import UIKit

class HomeViewController: UIViewController {
        
    private let cryptoTable: UITableView = { /* 289 */
        let table = UITableView(frame: .zero, style: .grouped) /* 290 */
        table.register(HomeTableViewCell.self,
                       forCellReuseIdentifier: HomeTableViewCell.identifier) /* 291 */
        table.layer.cornerRadius = 20 /* 314 */
        table.translatesAutoresizingMaskIntoConstraints = false /* 315 */
        return table /* 292 */
    }()
    
    private var cryptoViewModels = [CryptoTableViewCellViewModel]() /* 451 */

    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Crypto Tracker"
        view.backgroundColor = .systemBackground /* 5 */
        view.addSubview(cryptoTable) /* 293 */
        cryptoTable.backgroundColor = .systemBackground /* 294 */
        
        cryptoTable.delegate = self /* 316 */
        cryptoTable.dataSource = self /* 317 */
        //        navigationController?.navigationBar.isHidden = true /* 375 */
                fetchAllCryptoData() /* 468 */
                addSearch() /* 523 */
                
            }
            
            override func viewDidLayoutSubviews() { /* 287 */
                super.viewDidLayoutSubviews() /* 288 */
                cryptoTable.frame = CGRect(x: 10, y: 330, width: view.frame.size.width-20, height: view.frame.size.height-100) /* 295 */
                addConstraints() /* 328 */
            }
            
            private func addSearch() { /* 523 */
                let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch)) /* 524 */
                navigationItem.rightBarButtonItem = searchButton /* 525 */
            }
            
            @objc private func didTapSearch() { /* 526 */
                let searchVC = SearchCryptoViewController() /* 527 */
                navigationController?.pushViewController(searchVC, animated: true) /* 528 */
            }
            
            private func addConstraints() { /* 328 */
                NSLayoutConstraint.activate([ /* 329 */
                    cryptoTable.topAnchor.constraint(equalTo: view.topAnchor), /* 330 */
                    cryptoTable.bottomAnchor.constraint(equalTo: view.bottomAnchor), /* 330 */
                    cryptoTable.leadingAnchor.constraint(equalTo: view.leadingAnchor), /* 331 */
                    cryptoTable.trailingAnchor.constraint(equalTo: view.trailingAnchor), /* 332 */
                                            ])
            }
            
            private func fetchAllCryptoData() { /* 449 */
                CryptoAPICaller.shared.getAllCryptoData { [weak self] result in /* 450 */
                    switch result { /* 452 */
                    case .success(let models): /* 453 */
                        self?.cryptoViewModels = models.compactMap({ model in /* 454 */
                            //Number Formatter
                            let price = model.price_usd ?? 0 /* 455 */
                            let formatter = Formatters.cryptoNumberFormatter /* 456 */
                            let priceString = formatter.string(from: NSNumber(value: price)) /* 457 */
                            
                            let iconUrl = URL(string:
                                                CryptoAPICaller.shared.icons.filter({ icon in /* 458 */
                                icon.asset_id == model.asset_id /* 459 */
                            }).first?.url ?? "" /* 460 */
                            )
                        
                            if iconUrl != nil && price < 100000 { /* 470 */
                                return CryptoTableViewCellViewModel(
                                    name: model.name ?? "N/A",
                                    symbol: model.asset_id,
                                    price: priceString ?? "N/A",
                                    iconUrl: iconUrl
                                ) /* 461 */
                            } else { /* 471 */
                                return nil /* 472 */
                            }
                        })
                        
                        DispatchQueue.main.async { /* 462 */
                            self?.cryptoTable.reloadData() /* 463 */
                        }
                        print(models.count) /* 464 */
                        
                    case .failure(let error): /* 453 */
                        print("Error: \(error)") /* 465 */
                    }
                }
            }
        }

        //MARK: - Table
extension HomeViewController: UITableViewDelegate, UITableViewDataSource { /* 318 */
    
    func numberOfSections(in tableView: UITableView) -> Int { /* 474 */
        return 15 /* 475 */
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { /* 319 */
        return 1 /* 466 */
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { /* 320 */
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { /* 321 */
            fatalError() /* 322 */
        }
        
//        cell.textLabel?.text = "HAI" /* 323 */
        let itemIndex = indexPath.section /* 473 */
        if(itemIndex < cryptoViewModels.count) { /* 472 */
            cell.cryptoConfigure(with: cryptoViewModels[itemIndex]) /* 467 */
        }
        return cell /* 324 */
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { /* 325 */
        tableView.deselectRow(at: indexPath, animated: true) /* 326 */
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { /* 327 */
        140 /* 378 */
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? { /* 379 */
        let headerView = UIView() /* 380 */
        headerView.backgroundColor = .systemBackground /* 381 */
        return headerView /* 382 */
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { /* 383 */
        return 1 /* 384 */
    }
    
}
