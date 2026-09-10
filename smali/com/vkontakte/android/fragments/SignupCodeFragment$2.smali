.class Lcom/vkontakte/android/fragments/SignupCodeFragment$2;
.super Ljava/lang/Object;
.source "SignupCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupCodeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupCodeFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$2;->this$0:Lcom/vkontakte/android/fragments/SignupCodeFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 107
    return-void
.end method
