.class Lcom/vkontakte/android/fragments/ProfileFragment$4;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$4;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$4;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$4;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 336
    :cond_0
    return-void
.end method
