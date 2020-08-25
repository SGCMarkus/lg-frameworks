.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
.super Ljava/lang/Thread;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/lang/Object;

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1022
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mDone:Z

    .line 1023
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Lcom/android/internal/telephony/LGImsIsimHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
    .param p2, "x1"    # Lcom/android/internal/telephony/LGImsIsimHandler$1;

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    .param p1, "x1"    # Z

    .line 1021
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mDone:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1021
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method private checkAndStart()V
    .locals 1

    .line 1095
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->start()V

    .line 1098
    :cond_0
    return-void
.end method

.method private waitHandler()V
    .locals 2

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_1
    goto :goto_0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1109
    :cond_0
    return-void
.end method

.method private waitResult()V
    .locals 2

    .line 1113
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mDone:Z

    if-nez v0, :cond_0

    .line 1115
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_1
    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mDone:Z

    .line 1123
    return-void
.end method


# virtual methods
.method public declared-synchronized getGbaBootstrapAuthentication([B[B)Landroid/os/Bundle;
    .locals 3
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    monitor-enter p0

    .line 1068
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->checkAndStart()V

    .line 1069
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitHandler()V

    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    .line 1071
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1070
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$1800(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[B[BLandroid/os/Message;)V

    .line 1072
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitResult()V

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mResult:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1067
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    .end local p1    # "rand":[B
    .end local p2    # "autn":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getGbaNafAuthentication([B)[B
    .locals 3
    .param p1, "nafId"    # [B

    monitor-enter p0

    .line 1077
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->checkAndStart()V

    .line 1078
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitHandler()V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    .line 1080
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1079
    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$1900(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLandroid/os/Message;)V

    .line 1081
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitResult()V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mResult:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1076
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    .end local p1    # "nafId":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 1028
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mHandler:Landroid/os/Handler;

    .line 1060
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1061
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1064
    return-void

    .line 1061
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    monitor-enter p0

    .line 1087
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->checkAndStart()V

    .line 1088
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitHandler()V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    .line 1090
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1089
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$2000(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1091
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->waitResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    monitor-exit p0

    return-void

    .line 1086
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    .end local p1    # "rand":[B
    .end local p2    # "btid":Ljava/lang/String;
    .end local p3    # "keyLifetime":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
