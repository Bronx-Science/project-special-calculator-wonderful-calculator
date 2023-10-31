class TaxModel {
  late String state;
  late double income;
  late bool isMarried;

  TaxModel(this.state, this.income, this.isMarried);

  double CalculateTaxes() {
    double stateTaxRate = 0.0;
    double federalTaxRate = 0.0;
    double stateTaxLiability = 0.0;
    double federalTaxLiability = 0.0;

    if (isMarried) {
      if (income <= 20000) {
        federalTaxRate = 0.1;
      }
      if (income > 20000 && income <= 80000) {
        federalTaxRate = 0.12;
      }
      if (income > 80000 && income <= 171000) {
        federalTaxRate = 0.22;
      }
      if (income > 171000 && income <= 326000) {
        federalTaxRate = 0.24;
      }
      if (income > 326000 && income <= 414000) {
        federalTaxRate = 0.32;
      }
    }
    else {
      if (income <= 20000) {
        federalTaxRate = 0.05;
      }
      if (income > 20000 && income <= 80000) {
        federalTaxRate = 0.06;
      }
      if (income > 80000 && income <= 171000) {
        federalTaxRate = 0.11;
      }
      if (income > 171000 && income <= 326000) {
        federalTaxRate = 0.12;
      }
      if (income > 326000 && income <= 414000) {
        federalTaxRate = 0.16;
      }
    }

    // Tax Rates Acquired from https://www.nerdwallet.com/article/taxes/state-income-tax-rates
    switch(state) {
      case 'Alabama':
        stateTaxRate = 0.05;
        break;
      
      case 'Arizona':
        stateTaxRate = 0.05;
        break;
      
      case 'Arkansas':
        stateTaxRate = 0.047;
        break;

      case 'California':
        stateTaxRate = 0.012;
        break;
      
      case 'Colorado':
        stateTaxRate = 0.044;
        break;

      case 'Connecticut':
        stateTaxRate = 0.0699;
        break;

      case 'Delaware':
        stateTaxRate = 0.0445;
        break;

      case 'Georgia':
        stateTaxRate = 0.0575;
        break;

      case 'Hawaii':
        stateTaxRate = 0.011;
        break;

      case 'Illinois':
        stateTaxRate = 0.0495;
        break;

      case 'Idaho':
        stateTaxRate = 0.058;
        break;

      case 'Indiana':
        stateTaxRate = 0.0315;
        break;

      case 'Iowa':
        stateTaxRate = 0.06;
        break;

      case 'Kansas':
        stateTaxRate = 0.057;
        break;

      case 'Louisiana':
        stateTaxRate = 0.0425;
        break;

      case 'Maine':
        stateTaxRate = 0.0715;
        break;

      case 'Maryland':
        stateTaxRate = 0.0575;
        break;

      case 'Massachusetts':
        stateTaxRate = 0.09;
        break;

      case 'Michigan':
        stateTaxRate = 0.0405;
        break;

      case 'Minnesota':
        stateTaxRate = 0.0985;
        break;

      case 'Mississippi':
        stateTaxRate = 0.05;
        break;

      case 'Missouri':
        stateTaxRate = 0.0495;
        break;
      
      case 'Montana':
        stateTaxRate = 0.0675;
        break;

      case 'Nebraska':
        stateTaxRate = 0.0064;
        break;

      case 'New Hampshire':
        stateTaxRate = 0.04;
        break;

      case 'New Jersey':
        stateTaxRate = 0.1075;
        break;

      case 'New Mexico':
        stateTaxRate = 0.059;
        break;

      case 'New York':
        stateTaxRate = 0.109;
        break;

      case 'North Carolina':
        stateTaxRate = 0.0475;
        break;

      case 'Ohio':
        stateTaxRate = 0.0399;
        break;

      case 'Oklahoma':
        stateTaxRate = 0.0475;
        break;

      case 'Oregan':
        stateTaxRate = 0.099;
        break;

      case 'Pennsylvania':
        stateTaxRate = 0.0307;
        break;

      case 'Rhode Island':
        stateTaxRate = 0.0599;
        break;

      case 'South Carolina':
        stateTaxRate = 0.064;
        break;

      case 'Utah':
        stateTaxRate = 0.0465;
        break;

      case 'Vermont':
        stateTaxRate = 0.0875;
        break;

      case 'Virginia':
        stateTaxRate = 0.0575;
        break;

      case 'West Virginia':
        stateTaxRate = 0.0512;
        break;

      case 'Wisconsin':
        stateTaxRate = 0.0765;
        break;

      default:
        stateTaxRate = 0;
        break;
    }
    federalTaxLiability = income * federalTaxRate;
    stateTaxLiability = income * stateTaxRate;
    print(stateTaxLiability);
    print(federalTaxLiability);
    return federalTaxLiability + stateTaxLiability;
  }
}