.class Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;
.super Ljava/lang/Object;
.source "LGImsPhoneProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyPhoneStateChanged(IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

.field final synthetic val$item:I

.field final synthetic val$param1:I

.field final synthetic val$param2:I

.field final synthetic val$paramEx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2159
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    iput p2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$item:I

    iput p3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$param1:I

    iput p4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$param2:I

    iput-object p5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$paramEx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2162
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$item:I

    iget v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$param1:I

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$param2:I

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;->val$paramEx:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2163
    return-void
.end method
