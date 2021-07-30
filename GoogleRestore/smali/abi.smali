.class final Labi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Labj;


# direct methods
.method public constructor <init>(Labj;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Labi;->c:Labj;

    iput-object p2, p0, Labi;->a:Ljava/lang/String;

    iput-wide p3, p0, Labi;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Labi;->c:Labj;

    iget-object v0, v0, Labj;->a:Labt;

    iget-object v1, p0, Labi;->a:Ljava/lang/String;

    iget-wide v2, p0, Labi;->b:J

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Labt;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Labi;->c:Labj;

    iget-object v1, v0, Labj;->a:Labt;

    .line 2
    invoke-virtual {v0}, Labj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labt;->a(Ljava/lang/String;)V

    return-void
.end method
