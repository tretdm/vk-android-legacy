.class Lcom/vkontakte/android/fragments/NewsFragment$7;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->onResume()V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refreshOnOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->preloadNew()V

    .line 287
    :cond_1
    return-void
.end method
