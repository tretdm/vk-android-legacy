.class Lcom/vkontakte/android/fragments/DialogsFragment$2;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$2;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 235
    return-void
.end method
