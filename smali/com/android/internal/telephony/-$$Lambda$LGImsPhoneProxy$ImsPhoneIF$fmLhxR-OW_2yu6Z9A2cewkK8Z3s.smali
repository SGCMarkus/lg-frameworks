.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$fmLhxR-OW_2yu6Z9A2cewkK8Z3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$fmLhxR-OW_2yu6Z9A2cewkK8Z3s;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$fmLhxR-OW_2yu6Z9A2cewkK8Z3s;->f$0:Z

    check-cast p1, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->lambda$notifyNetworkInfoNotificationEnabled$1(ZLcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    return-void
.end method
