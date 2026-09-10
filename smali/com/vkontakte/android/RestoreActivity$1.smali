.class Lcom/vkontakte/android/RestoreActivity$1;
.super Lcom/vkontakte/android/ui/ActionBarProgressDrawable;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RestoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RestoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RestoreActivity$1;->this$0:Lcom/vkontakte/android/RestoreActivity;

    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 46
    iget-object v1, p0, Lcom/vkontakte/android/RestoreActivity$1;->this$0:Lcom/vkontakte/android/RestoreActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBar(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "abv":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 48
    :cond_0
    return-void
.end method
