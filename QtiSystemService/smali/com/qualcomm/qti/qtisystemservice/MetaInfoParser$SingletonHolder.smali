.class Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$SingletonHolder;
.super Ljava/lang/Object;
.source "MetaInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;-><init>(Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$1;)V

    sput-object v0, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser$SingletonHolder;->sInstance:Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;

    return-void
.end method
