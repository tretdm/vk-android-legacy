.class Lcom/vkontakte/android/fragments/NewsFragment$11;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->showNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;

.field final synthetic val$forCache:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$11;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$11;->val$forCache:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 505
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$11;->val$forCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 506
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$11;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    goto :goto_0

    .line 508
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    return-void
.end method
