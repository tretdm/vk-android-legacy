.class Lcom/vkontakte/android/fragments/DialogsFragment$6;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


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
    .line 393
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$6;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$600(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    return v0
.end method
