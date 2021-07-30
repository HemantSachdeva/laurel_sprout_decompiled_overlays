.class public final Leid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldxv;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# instance fields
.field public final b:Ldlq;

.field public final c:Ldlj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    .line 1
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Leid;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ldlj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leid;->c:Ldlj;

    .line 2
    invoke-interface {p1}, Ldlj;->f()Ldlq;

    move-result-object p1

    iput-object p1, p0, Leid;->b:Ldlq;

    return-void
.end method
