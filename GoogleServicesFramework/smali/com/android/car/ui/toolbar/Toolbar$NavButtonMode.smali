.class public final enum Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;
.super Ljava/lang/Enum;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

.field public static final enum BACK:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

.field public static final enum CLOSE:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

.field public static final enum DOWN:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 390
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->BACK:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    .line 392
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    const-string v1, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->CLOSE:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    .line 394
    new-instance v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    const-string v1, "DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->DOWN:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    .line 388
    sget-object v5, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->BACK:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->CLOSE:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->$VALUES:[Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;
    .locals 1

    .line 388
    const-class v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;
    .locals 1

    .line 388
    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->$VALUES:[Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {v0}, [Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    return-object v0
.end method
