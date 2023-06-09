//
//  PreviewProvider.swift
//  CryptoCurrencyApp
//
//  Created by Jose Manuel Cepero on 11-03-23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    let stat1 = StatisticModel(title: "Current Price", value: "$21,536.00", percentageChange: 1.23)
    let stat2 = StatisticModel(title: "Market Capitalization", value: "$413.158Bn", percentageChange: 1.67)
    let stat3 = StatisticModel(title: "Rank", value: "1", percentageChange: nil)
    let stat4 = StatisticModel(title: "volume", value: "35.99Bn", percentageChange: nil)
    
    let sectionModel = CoinDetailSectionModel(
        title: "Overview",
        stats: [
            StatisticModel(title: "Current Price", value: "$21,536.00", percentageChange: 1.23),
            StatisticModel(title: "Market Capitalization", value: "$413.158Bn", percentageChange: 1.67),
            StatisticModel(title: "Rank", value: "1", percentageChange: nil),
            StatisticModel(title: "volume", value: "35.99Bn", percentageChange: nil)
        ]
    )
    
    let coin = Coin(
        id: "bitcoin",
        symbol: "btc",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 20606,
        marketCapRank: 1,
        marketCap: 397075273925,
        fullyDilutedValuation: 431702166361,
        totalVolume: 24651544500,
        high24H: 20588,
        low24H: 20100,
        priceChange24H: 506.3,
        priceChangePercentage24H: 2.51894,
        marketCapChange24H: 7970028821,
        marketCapChangePercentage24H: 2.0483,
        circulatingSupply: 19315587,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -70.15574,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: 30288.14655,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2023-03-12T17:00:05.547Z",
        sparklineIn7D: SparklineIn7D(
            price: [
                22412.868368255655,
                22451.735137132684,
                22493.63280866233,
                22465.464231100654,
                22476.240200045482,
                22441.430518504727,
                22459.730831121095,
                22429.0166710947,
                22427.021335757956,
                22429.168230685544,
                22534.14106727921,
                22455.521105156393,
                22432.85634630719,
                22446.704207355437,
                22405.871753227584,
                22420.56459795589,
                22407.277637305626,
                22362.00823955405,
                22375.039455087837,
                22422.125634818287,
                22413.812768997555,
                22431.198532520255,
                22407.24052716349,
                22404.298903649327,
                22400.563638335858,
                22393.18714275068,
                22405.74091399527,
                22460.953361220167,
                22432.71924932509,
                22548.56002224413,
                22529.992641588986,
                22495.502238217545,
                22536.241866918812,
                22456.20719527491,
                22362.196507265864,
                22413.870229736516,
                22430.81746309442,
                22414.06021826144,
                22492.302674204086,
                22463.93220672041,
                22515.21563268249,
                22480.78676386218,
                22473.944938112774,
                22471.823436897506,
                22445.71820108979,
                22441.55103007756,
                22421.621426118632,
                22400.010449736306,
                22409.451022887457,
                22383.223220601696,
                22406.735643216747,
                22401.431348025064,
                22353.43403616607,
                22331.018759965096,
                22245.6038174552,
                22327.793618615127,
                22228.55405539254,
                22203.698566363462,
                22051.451967084125,
                22078.895826128584,
                22099.854839403637,
                22217.209884905325,
                22292.230162666576,
                22160.33206266994,
                22186.36968798273,
                22165.58296915028,
                22142.02810099169,
                21953.980294081073,
                22004.02129174228,
                22033.525072926594,
                21996.975848304148,
                22033.292611374643,
                22119.05660147016,
                22089.111218236074,
                22023.792601069603,
                21988.427704428243,
                21996.437775273775,
                22145.99908374674,
                22153.288348301492,
                22084.73871643898,
                22045.176240628607,
                22027.347434954176,
                22106.28168957777,
                22036.708973982408,
                21964.16070779069,
                21716.15632278766,
                21720.374529975055,
                21731.002438356238,
                21780.264719268274,
                21769.444086926935,
                21749.76424408577,
                21748.11793939083,
                21731.60023509299,
                21708.925914286992,
                21702.085416293376,
                21645.629172649456,
                21669.908087750096,
                21680.72422885794,
                21640.36177784387,
                21742.881357434017,
                21766.100920425797,
                21657.259968088314,
                21467.29006662448,
                21476.6211959799,
                21062.06888147991,
                20915.60748157303,
                20207.416674217828,
                20256.237264428655,
                20381.708088738338,
                20368.318163263935,
                20106.49927115662,
                20121.722912996465,
                20055.9629740996,
                20098.69680757734,
                19923.68807279441,
                20014.593981052483,
                19927.84901663721,
                19952.053930132868,
                19966.099406627905,
                19927.031640527064,
                19662.44149159682,
                19736.70214276614,
                20015.141795842756,
                20140.716096819775,
                19726.498317449248,
                20017.56126117087,
                20015.74975034846,
                19998.38051357231,
                19873.05651922205,
                20014.94794417126,
                19978.40357393128,
                20112.688589332083,
                20125.326859603574,
                20161.423237145915,
                20289.122305747762,
                20641.53384712589,
                20496.439504448153,
                20430.281920284022,
                20354.92119559217,
                20422.183524835124,
                20320.149386386733,
                19997.68589321568,
                20144.278466016294,
                20153.915419082572,
                20070.351740652604,
                20060.5039879907,
                20065.064620294488,
                20148.628585917606,
                20147.449083421205,
                20109.695014321405,
                20099.601274125893,
                20213.861350166047,
                20420.11198972381,
                20260.380642135693,
                20404.807576276766,
                20412.131059720636,
                20377.60331694696,
                20521.55615175117,
                20520.970591146033,
                20419.509940034084,
                20354.176853327146,
                20378.894553520688,
                20395.774231576986,
                20385.416893300982,
                20394.706473365226,
                20374.722033031314,
                20416.506084115634,
                20390.358395002007,
                20445.639275555073
            ]
        ),
        priceChangePercentage24HInCurrency: 2.518940622377696
    )
}

