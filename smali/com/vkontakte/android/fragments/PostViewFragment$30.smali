.class Lcom/vkontakte/android/fragments/PostViewFragment$30;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 1354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$43(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$PostCommentsAdapter;->notifyDataSetChanged()V

    .line 1357
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$30;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$44(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1358
    return-void
.end method
