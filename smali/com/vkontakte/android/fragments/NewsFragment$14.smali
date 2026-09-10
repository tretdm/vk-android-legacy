.class Lcom/vkontakte/android/fragments/NewsFragment$14;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/NewsfeedCache;->get(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 590
    .local v0, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/NewsFragment$14$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/NewsFragment$14$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment$14;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
