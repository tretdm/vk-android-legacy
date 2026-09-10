.class Lcom/vkontakte/android/fragments/AudioListFragment$19;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->loadSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$19;)Lcom/vkontakte/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 777
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->refillIDs(Landroid/content/Context;)V

    .line 778
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->getCachedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 779
    .local v0, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 780
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$12(Lcom/vkontakte/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$19;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/AudioListFragment$19$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/AudioListFragment$19$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$19;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method
