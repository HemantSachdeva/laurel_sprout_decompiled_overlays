.class public final enum Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
.super Ljava/lang/Enum;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientDiffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

.field public static final enum UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 84
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "INSERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 85
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const-string v1, "UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    .line 82
    sget-object v5, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->$VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .locals 1

    .line 82
    const-class v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .locals 1

    .line 82
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->$VALUES:[Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual {v0}, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    return-object v0
.end method
