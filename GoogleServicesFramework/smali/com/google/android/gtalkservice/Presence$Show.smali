.class public final enum Lcom/google/android/gtalkservice/Presence$Show;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Show"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gtalkservice/Presence$Show;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum AWAY:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum DND:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum NONE:Lcom/google/android/gtalkservice/Presence$Show;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 48
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    .line 49
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AWAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    .line 50
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "EXTENDED_AWAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    .line 51
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "DND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    .line 52
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gtalkservice/Presence$Show;

    .line 47
    sget-object v7, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v7, v1, v2

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/android/gtalkservice/Presence$Show;->$VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    .line 47
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gtalkservice/Presence$Show;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gtalkservice/Presence$Show;->$VALUES:[Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, [Lcom/google/android/gtalkservice/Presence$Show;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method
