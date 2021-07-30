.class public final enum Lcom/android/car/ui/toolbar/Toolbar$State;
.super Ljava/lang/Enum;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/toolbar/Toolbar$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/toolbar/Toolbar$State;

.field public static final enum EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

.field public static final enum HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

.field public static final enum SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

.field public static final enum SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 103
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$State;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/ui/toolbar/Toolbar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 108
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$State;

    const-string v1, "SUBPAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/car/ui/toolbar/Toolbar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 112
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$State;

    const-string v1, "SEARCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/car/ui/toolbar/Toolbar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 117
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$State;

    const-string v1, "EDIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/car/ui/toolbar/Toolbar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->EDIT:Lcom/android/car/ui/toolbar/Toolbar$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 97
    sget-object v6, Lcom/android/car/ui/toolbar/Toolbar$State;->HOME:Lcom/android/car/ui/toolbar/Toolbar$State;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/car/ui/toolbar/Toolbar$State;->$VALUES:[Lcom/android/car/ui/toolbar/Toolbar$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/toolbar/Toolbar$State;
    .locals 1

    .line 97
    const-class v0, Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/toolbar/Toolbar$State;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/toolbar/Toolbar$State;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->$VALUES:[Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {v0}, [Lcom/android/car/ui/toolbar/Toolbar$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/toolbar/Toolbar$State;

    return-object v0
.end method
