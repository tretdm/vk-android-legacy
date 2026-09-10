.class Lcom/vkontakte/android/ProfileEditActivity$8;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$8;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcom/vkontakte/android/ProfileEditActivity;->access$12()Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    .local v0, "show":Z
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$8;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v4, 0x7f090168

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$8;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    const v4, 0x7f090169

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void

    :cond_0
    move v1, v3

    .line 179
    goto :goto_0

    :cond_1
    move v2, v3

    .line 180
    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
