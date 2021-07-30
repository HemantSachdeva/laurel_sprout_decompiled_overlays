.class public Lcom/google/android/common/http/UrlRules$Rule;
.super Ljava/lang/Object;
.source "UrlRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/UrlRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;


# instance fields
.field public final mBlock:Z

.field public final mName:Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;

.field public final mRewrite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0}, Lcom/google/android/common/http/UrlRules$Rule;-><init>()V

    sput-object v0, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DEFAULT"

    .line 109
    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/common/http/UrlRules$RuleFormatException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/google/android/common/http/UrlRules;->access$000()Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    array-length v0, p1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 86
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    .line 89
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 90
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rewrite"

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    array-length v6, p1

    if-ge v5, v6, :cond_0

    .line 92
    aget-object v1, p1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "block"

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    .line 98
    :cond_1
    new-instance p0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal rule: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_2
    iput-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 104
    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    return-void

    .line 84
    :cond_3
    new-instance p0, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    const-string p1, "Empty rule"

    invoke-direct {p0, p1}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 132
    check-cast p1, Lcom/google/android/common/http/UrlRules$Rule;

    iget-object p1, p1, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
