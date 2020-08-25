.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LteStateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum EPS_ONLY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field public static final enum RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

.field private static final sLteStateInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 185
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 186
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v2, 0x1

    const-string v3, "NORMAL_DETACHED"

    invoke-direct {v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 187
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v3, 0x2

    const-string v4, "EMERGENCY_ATTACHED"

    invoke-direct {v0, v4, v3, v3}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 188
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v4, 0x3

    const-string v5, "NORMAL_ATTACHED"

    invoke-direct {v0, v5, v4, v4}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 189
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v5, 0x4

    const-string v6, "EMERGENCY_DETACHED"

    invoke-direct {v0, v6, v5, v5}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 190
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v6, 0x5

    const-string v7, "EPS_ONLY_ATTACHED"

    invoke-direct {v0, v7, v6, v6}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EPS_ONLY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 192
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/16 v7, 0xb

    const/4 v8, 0x6

    const-string v9, "REATTACH_REQUIRED"

    invoke-direct {v0, v9, v8, v7}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 193
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/4 v9, 0x7

    const-string v10, "REATTACH_NOT_REQUIURED"

    const/16 v11, 0xc

    invoke-direct {v0, v10, v9, v11}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 194
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/16 v10, 0x8

    const-string v11, "IMSI_DETACH_MT_DETACH"

    const/16 v12, 0xd

    invoke-direct {v0, v11, v10, v12}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 195
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/16 v11, 0x9

    const-string v12, "RESERVED_MT_DETACH_TYPE_ONE"

    const/16 v13, 0x10

    invoke-direct {v0, v12, v11, v13}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 196
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    const/16 v12, 0xa

    const-string v13, "RESERVED_MT_DETACH_TYPE_TWO"

    const/16 v14, 0x11

    invoke-direct {v0, v13, v12, v14}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 184
    new-array v0, v7, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    sget-object v7, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v7, v0, v1

    sget-object v7, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v7, v0, v2

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v3

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NORMAL_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v4

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EMERGENCY_DETACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v5

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->EPS_ONLY_ATTACHED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v6

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_REQUIRED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v8

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->REATTACH_NOT_REQUIURED:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v9

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->IMSI_DETACH_MT_DETACH:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v10

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_ONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v11

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->RESERVED_MT_DETACH_TYPE_TWO:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    aput-object v2, v0, v12

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    .line 202
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 203
    .local v3, "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v3    # "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->mCode:I

    .line 209
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 2
    .param p0, "code"    # I

    .line 216
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->sLteStateInfoMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 217
    .local v0, "lsi":Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    .line 220
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 184
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;
    .locals 1

    .line 184
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;->mCode:I

    return v0
.end method
