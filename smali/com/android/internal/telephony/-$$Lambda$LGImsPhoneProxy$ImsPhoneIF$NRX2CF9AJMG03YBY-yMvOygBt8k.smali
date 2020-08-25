.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;->f$0:I

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;->f$0:I

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;->f$1:[Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->lambda$notifyCellInfo$0(I[Ljava/lang/String;Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    return-void
.end method
