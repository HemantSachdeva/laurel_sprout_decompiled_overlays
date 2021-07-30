.class public final Ldve;
.super Ldvc;
.source "PG"


# instance fields
.field public final synthetic a:Ldvc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldvc;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldvc;)V
    .locals 0

    iput-object p1, p0, Ldve;->a:Ldvc;

    invoke-direct {p0}, Ldvc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldyv;)V
    .locals 1

    iget-object v0, p0, Ldve;->a:Ldvc;

    .line 1
    invoke-virtual {v0, p1}, Ldvc;->a(Ldyv;)V

    return-void
.end method
