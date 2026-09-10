.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clearExcept(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

.field final synthetic val$exceptionKeys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->val$exceptionKeys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 178
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->access$000(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 179
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 181
    .local v1, "exceptions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->val$exceptionKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 184
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->val$exceptionKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v5, "removedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-virtual {v6, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 206
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method
