.class Lcom/vkontakte/android/fragments/AudioListFragment$11$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$11;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$11;

.field private final synthetic val$newText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$11;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$11;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;->val$newText:Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$11;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$11;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$11;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$22(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)V

    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$11;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$11;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$11;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$11$1;->val$newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$23(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 420
    return-void
.end method
