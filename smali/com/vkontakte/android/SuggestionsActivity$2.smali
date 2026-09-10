.class Lcom/vkontakte/android/SuggestionsActivity$2;
.super Lcom/vkontakte/android/ui/ActionBarProgressDrawable;
.source "SuggestionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestionsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestionsActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/SuggestionsActivity$2;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->invalidateSelf()V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/SuggestionsActivity$2;->this$0:Lcom/vkontakte/android/SuggestionsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ActionBarHacks;->getActionBar(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "abv":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 60
    :cond_0
    return-void
.end method
