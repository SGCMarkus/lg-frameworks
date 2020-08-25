.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmcFailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field public static final enum PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

.field private static final sEmcFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 153
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 154
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const/4 v2, 0x1

    const-string v3, "PDN_FAILED"

    invoke-direct {v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 155
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const/4 v3, 0x2

    const-string v4, "ATTACH_FAILED"

    invoke-direct {v0, v4, v3, v3}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 156
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    const/4 v4, 0x3

    const-string v5, "BARRED"

    invoke-direct {v0, v5, v4, v4}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v0, v1

    sget-object v5, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v5, v0, v2

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v2, v0, v3

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    aput-object v2, v0, v4

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    .line 162
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 163
    .local v3, "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v3    # "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
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

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->mCode:I

    .line 169
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 2
    .param p0, "code"    # I

    .line 176
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 177
    .local v0, "efc":Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    .line 180
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;
    .locals 1

    .line 152
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;->mCode:I

    return v0
.end method
