.class Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;
.super Ljava/lang/Object;
.source "LGImsPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CA_TARGET"
.end annotation


# static fields
.field static final COUNTRY:Ljava/lang/String;

.field static final OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    nop

    .line 67
    const-string v0, "unknown"

    const-string v1, "ro.vendor.lge.build.target_operator"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->OPERATOR:Ljava/lang/String;

    .line 68
    nop

    .line 69
    const-string v1, "ro.vendor.lge.build.target_country"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->COUNTRY:Ljava/lang/String;

    .line 68
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
