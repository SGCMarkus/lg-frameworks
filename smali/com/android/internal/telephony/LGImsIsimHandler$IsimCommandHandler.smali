.class final Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.super Landroid/os/Handler;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IsimCommandHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;,
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;,
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;,
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;,
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;
    }
.end annotation


# static fields
.field private static final EVENT_GBA_AUTHENTICATE_BOOTSTRAP_DONE:I = 0x65

.field private static final EVENT_GBA_AUTHENTICATE_NAF_DONE:I = 0x66

.field private static final EVENT_WRITE_DONE:I = 0x67


# instance fields
.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRunner:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 937
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 938
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 939
    new-instance p1, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Lcom/android/internal/telephony/LGImsIsimHandler$1;)V

    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mRunner:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    .line 940
    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[B[BLandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # Landroid/os/Message;

    .line 929
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->authenticateGbaBootstrap([B[BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/Message;

    .line 929
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->authenticateGbaNaf([BLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Message;

    .line 929
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->updateGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "data"    # [B

    .line 1009
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1011
    .local v1, "len":I
    :goto_0
    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 1012
    const/16 v1, 0xff

    .line 1013
    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1016
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1018
    return-void
.end method

.method private authenticateGbaBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 978
    new-instance v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[B[BLandroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->executeCommand(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;)V

    .line 979
    return-void
.end method

.method private authenticateGbaNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 982
    new-instance v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLandroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->executeCommand(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;)V

    .line 983
    return-void
.end method

.method private executeCommand(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;

    .line 1004
    const-string v0, "executeCommand"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1006
    return-void
.end method

.method private updateGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 987
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 996
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 997
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 998
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 1000
    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;

    const/16 v2, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;I[BLandroid/os/Message;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->executeCommand(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;)V

    .line 1001
    return-void

    .line 988
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Landroid/os/Message;)V

    .line 989
    .local v0, "cmd":Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Illegal argument - rand or btid or keyLifetime"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 991
    return-void
.end method


# virtual methods
.method public getGbaBootstrapAuthentication([B[B)Landroid/os/Bundle;
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mRunner:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->getGbaBootstrapAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGbaNafAuthentication([B)[B
    .locals 1
    .param p1, "nafId"    # [B

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mRunner:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->getGbaNafAuthentication([B)[B

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 944
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    const-string v0, "GBA authentication done"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 948
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 949
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 951
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 952
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 953
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 961
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method public setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->mRunner:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void
.end method
