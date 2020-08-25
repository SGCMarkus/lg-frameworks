.class public Lcom/android/ims/LGImsConfig;
.super Ljava/lang/Object;
.source "LGImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/LGImsConfig$VoiceDomainPreference;,
        Lcom/android/ims/LGImsConfig$ImsSsControlPreference;,
        Lcom/android/ims/LGImsConfig$SsDomainSetting;,
        Lcom/android/ims/LGImsConfig$ConfigConstants;
    }
.end annotation


# static fields
.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final NOT_PROVISIONED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
