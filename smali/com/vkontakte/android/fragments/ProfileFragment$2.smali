.class Lcom/vkontakte/android/fragments/ProfileFragment$2;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$2;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->scrollToTop()V

    .line 130
    return-void
.end method
