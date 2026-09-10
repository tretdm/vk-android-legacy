.class Lcom/vkontakte/android/ProfileView$8;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$8;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$8;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$8;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$8;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V

    .line 337
    return-void
.end method
