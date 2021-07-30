.class public final Lbrl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbrl;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbrl;->b()Lbxp;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbxp;
    .locals 2

    iget-object v0, p0, Lbrl;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, v0, Lbsy;->c:Lbxp;

    .line 2
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldqp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
