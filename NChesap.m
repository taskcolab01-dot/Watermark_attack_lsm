function NC=NChesap(odamga,cdamga)
pay=sum(sum(sum(odamga.*cdamga)));
payda=sqrt(sum(sum(sum(odamga.*odamga))))*sqrt(sum(sum(sum(cdamga.*cdamga))));
NC=pay/payda;
end

