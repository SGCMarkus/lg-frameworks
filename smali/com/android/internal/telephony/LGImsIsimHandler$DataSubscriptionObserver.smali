.class final Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;
.super Landroid/database/ContentObserver;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSubscriptionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 777
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    .line 778
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 779
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$1300(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    .line 784
    return-void
.end method
