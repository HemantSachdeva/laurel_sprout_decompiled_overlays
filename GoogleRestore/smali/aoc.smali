.class final Laoc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:Laoh;


# direct methods
.method public constructor <init>(Laoh;)V
    .locals 0

    iput-object p1, p0, Laoc;->a:Laoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Laoc;->a:Laoh;

    iget-object p1, p1, Laoh;->b:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rebind succeeded"

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Laoc;->a:Laoh;

    iget-object p1, p1, Laoh;->b:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-string v1, "Rebind failed"

    invoke-virtual {p1, v1, v0}, Laqd;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
