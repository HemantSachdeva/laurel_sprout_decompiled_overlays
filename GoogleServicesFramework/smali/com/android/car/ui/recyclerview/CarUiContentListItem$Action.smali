.class public final enum Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;
.super Ljava/lang/Enum;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiContentListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum CHECK_BOX:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum CHEVRON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum ICON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum RADIO_BUTTON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field public static final enum SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 78
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 82
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "SWITCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 87
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "CHECK_BOX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->CHECK_BOX:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 92
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "RADIO_BUTTON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 96
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "ICON"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->ICON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 101
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const-string v1, "CHEVRON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->CHEVRON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 74
    sget-object v8, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->CHECK_BOX:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->ICON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->$VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;
    .locals 1

    .line 74
    const-class v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->$VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-virtual {v0}, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    return-object v0
.end method
