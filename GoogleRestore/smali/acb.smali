.class public final Lacb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lacb;->a:I

    iput-object p2, p0, Lacb;->b:Ljava/util/List;

    iput p3, p0, Lacb;->c:I

    iput-object p4, p0, Lacb;->d:Ljava/io/InputStream;

    return-void
.end method
