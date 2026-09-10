.class Lcom/vkontakte/android/ProfileView$15$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView$15;->success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ProfileView$15;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$15$1;->this$1:Lcom/vkontakte/android/ProfileView$15;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$15$1;->this$1:Lcom/vkontakte/android/ProfileView$15;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$15;->access$0(Lcom/vkontakte/android/ProfileView$15;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 501
    return-void
.end method
