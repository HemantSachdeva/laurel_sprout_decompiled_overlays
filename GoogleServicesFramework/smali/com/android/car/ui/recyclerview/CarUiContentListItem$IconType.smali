.class public final enum Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;
.super Ljava/lang/Enum;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiContentListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

.field public static final enum AVATAR:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

.field public static final enum CONTENT:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

.field public static final enum STANDARD:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->CONTENT:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    .line 63
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    const-string v1, "STANDARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->STANDARD:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    .line 68
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    const-string v1, "AVATAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->AVATAR:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    .line 55
    sget-object v5, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->CONTENT:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->STANDARD:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->$VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;
    .locals 1

    .line 55
    const-class v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->$VALUES:[Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    invoke-virtual {v0}, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-object v0
.end method
