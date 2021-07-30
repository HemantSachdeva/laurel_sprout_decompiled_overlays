.class final Leqy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerp;


# instance fields
.field final synthetic a:Lero;


# direct methods
.method public constructor <init>(Lero;)V
    .locals 0

    iput-object p1, p0, Leqy;->a:Lero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Leqy;->a:Lero;

    iget-object v0, v0, Lero;->j:Lerx;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/net/UploadDataProvider;->close()V

    return-void
.end method
