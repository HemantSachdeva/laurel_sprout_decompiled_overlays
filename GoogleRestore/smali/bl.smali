.class public final Lbl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbn;


# direct methods
.method public constructor <init>(Lbn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl;->a:Lbn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lba;
    .locals 1

    iget-object v0, p0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 2
    invoke-virtual {v0, p1}, Lbx;->b(Ljava/lang/String;)Lba;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lbx;
    .locals 1

    iget-object v0, p0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 3
    invoke-virtual {v0}, Lbx;->noteStateNotSaved()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbx;->c(Z)V

    return-void
.end method
