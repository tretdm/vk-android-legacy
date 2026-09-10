.class Lcom/vkontakte/android/NewsView$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$1;->this$0:Lcom/vkontakte/android/NewsView;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    .line 147
    invoke-static {}, Lcom/vkontakte/android/NewsView;->access$1()Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    new-array v3, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v3, v6

    const-string v6, "common"

    aput-object v6, v3, v8

    const/4 v6, 0x2

    const-string v7, "audio"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "video"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "signature"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "album"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "doc_thumb"

    aput-object v7, v3, v6

    .line 149
    .local v3, "types":[Ljava/lang/String;
    new-array v2, v9, [I

    fill-array-data v2, :array_0

    .line 150
    .local v2, "nums":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-lt v0, v6, :cond_1

    .line 157
    invoke-static {v8}, Lcom/vkontakte/android/NewsView;->access$2(Z)V

    .line 159
    .end local v0    # "i":I
    .end local v2    # "nums":[I
    .end local v3    # "types":[Ljava/lang/String;
    :cond_0
    return-void

    .line 151
    .restart local v0    # "i":I
    .restart local v2    # "nums":[I
    .restart local v3    # "types":[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "vs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget v6, v2, v0

    if-lt v1, v6, :cond_2

    .line 154
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/NewsView$1;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-static {v6, v7}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 155
    .local v4, "v":Landroid/view/View;
    aget-object v7, v3, v0

    invoke-static {v4, v7}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :array_0
    .array-data 4
        0x14
        0x14
        0x14
        0xf
        0x5
        0x5
        0x5
    .end array-data
.end method
