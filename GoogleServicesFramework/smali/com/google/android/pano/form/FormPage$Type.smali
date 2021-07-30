.class final enum Lcom/google/android/pano/form/FormPage$Type;
.super Ljava/lang/Enum;
.source "FormPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/form/FormPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/pano/form/FormPage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/pano/form/FormPage$Type;

.field public static final enum INTENT:Lcom/google/android/pano/form/FormPage$Type;

.field public static final enum MULTIPLE_CHOICE:Lcom/google/android/pano/form/FormPage$Type;

.field public static final enum PASSWORD_INPUT:Lcom/google/android/pano/form/FormPage$Type;

.field public static final enum TEXT_INPUT:Lcom/google/android/pano/form/FormPage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/google/android/pano/form/FormPage$Type;

    const-string v1, "MULTIPLE_CHOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/pano/form/FormPage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/FormPage$Type;->MULTIPLE_CHOICE:Lcom/google/android/pano/form/FormPage$Type;

    new-instance v0, Lcom/google/android/pano/form/FormPage$Type;

    const-string v1, "TEXT_INPUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/pano/form/FormPage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/FormPage$Type;->TEXT_INPUT:Lcom/google/android/pano/form/FormPage$Type;

    new-instance v0, Lcom/google/android/pano/form/FormPage$Type;

    const-string v1, "PASSWORD_INPUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/pano/form/FormPage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/FormPage$Type;->PASSWORD_INPUT:Lcom/google/android/pano/form/FormPage$Type;

    new-instance v0, Lcom/google/android/pano/form/FormPage$Type;

    const-string v1, "INTENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/pano/form/FormPage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/pano/form/FormPage$Type;->INTENT:Lcom/google/android/pano/form/FormPage$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/pano/form/FormPage$Type;

    .line 21
    sget-object v6, Lcom/google/android/pano/form/FormPage$Type;->MULTIPLE_CHOICE:Lcom/google/android/pano/form/FormPage$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/pano/form/FormPage$Type;->TEXT_INPUT:Lcom/google/android/pano/form/FormPage$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/pano/form/FormPage$Type;->PASSWORD_INPUT:Lcom/google/android/pano/form/FormPage$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/pano/form/FormPage$Type;->$VALUES:[Lcom/google/android/pano/form/FormPage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/pano/form/FormPage$Type;
    .locals 1

    .line 21
    const-class v0, Lcom/google/android/pano/form/FormPage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/pano/form/FormPage$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/pano/form/FormPage$Type;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/pano/form/FormPage$Type;->$VALUES:[Lcom/google/android/pano/form/FormPage$Type;

    invoke-virtual {v0}, [Lcom/google/android/pano/form/FormPage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/pano/form/FormPage$Type;

    return-object v0
.end method
