.class Lcom/vkontakte/android/ProfileView$13$2;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView$13;->success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ProfileView$13;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$13$2;->this$1:Lcom/vkontakte/android/ProfileView$13;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$13$2;->this$1:Lcom/vkontakte/android/ProfileView$13;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$13;->access$0(Lcom/vkontakte/android/ProfileView$13;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 451
    return-void
.end method
