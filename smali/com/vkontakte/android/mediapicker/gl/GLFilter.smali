.class public Lcom/vkontakte/android/mediapicker/gl/GLFilter;
.super Ljava/lang/Object;
.source "GLFilter.java"


# instance fields
.field name:Ljava/lang/String;

.field textures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->name:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    .line 20
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 22
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 27
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 24
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLFilter;->textures:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
