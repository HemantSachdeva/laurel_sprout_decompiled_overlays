.class synthetic Lcom/android/car/ui/toolbar/ToolbarControllerImpl$2;
.super Ljava/lang/Object;
.source "ToolbarControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/ToolbarControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 710
    invoke-static {}, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->values()[Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$2;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    :try_start_0
    sget-object v1, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->CLOSE:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$2;->$SwitchMap$com$android$car$ui$toolbar$Toolbar$NavButtonMode:[I

    sget-object v1, Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;->DOWN:Lcom/android/car/ui/toolbar/Toolbar$NavButtonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
