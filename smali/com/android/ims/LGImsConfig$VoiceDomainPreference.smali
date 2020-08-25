.class public Lcom/android/ims/LGImsConfig$VoiceDomainPreference;
.super Ljava/lang/Object;
.source "LGImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceDomainPreference"
.end annotation


# static fields
.field public static final CS_VOICE_ONLY:I = 0x1

.field public static final CS_VOICE_PREFERRED_IMS_PS_VOICE_AS_SECONDARY:I = 0x2

.field public static final IMS_PS_VOICE_ONLY:I = 0x4

.field public static final IMS_PS_VOICE_PREFERRED_CS_VOICE_AS_SECONDARY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
