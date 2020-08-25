.class public Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
.super Ljava/lang/Object;
.source "LGImsPhoneMessage.java"


# static fields
.field public static final EVENT_CALL_CONFERENCE_STATE_CHANGED:I = 0x35

.field public static final EVENT_CALL_PUSH_RESULT:I = 0x36

.field public static final EVENT_CALL_RESULT:I = 0x33

.field public static final EVENT_CALL_TRANSFER_RESULT:I = 0x37

.field public static final EVENT_CALL_UPDATE_RECEIVED:I = 0x34

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_REG_SERVICE_STATE_CHANGED:I = 0x1

.field public static final UNSOL_CONF_EXTENDED:I = 0x1

.field public static final UNSOL_UNKNOWN:I


# instance fields
.field public mArg1:Ljava/lang/Object;

.field public mArg2:Ljava/lang/Object;

.field public mCmd:I

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cmd"    # I
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 98
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 99
    iput p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 100
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 101
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 86
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 87
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 91
    iput p1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    .line 92
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    .line 93
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static forCallConferenceState(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "state"    # Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x35

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallPushResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "state"    # Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x36

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x33

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallTransferResult(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "state"    # Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x37

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallUpdate(ILjava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 3
    .param p0, "cmd"    # I
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x34

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forCallUpdate(Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forRegServiceState(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;
    .locals 2
    .param p0, "state"    # Ljava/lang/Object;
    .param p1, "phoneId"    # Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mArg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mArg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/LGImsPhoneMessage;->mArg2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
