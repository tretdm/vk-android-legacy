.class Lcom/vkontakte/android/ui/FormFieldsLayout$1;
.super Ljava/lang/Object;
.source "FormFieldsLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/FormFieldsLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/FormFieldsLayout;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/FormFieldsLayout;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/ui/FormFieldsLayout$1;->this$0:Lcom/vkontakte/android/ui/FormFieldsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/vkontakte/android/ui/FormFieldsLayout$1;->this$0:Lcom/vkontakte/android/ui/FormFieldsLayout;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/FormFieldsLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/ui/FormFieldsLayout$1;->this$0:Lcom/vkontakte/android/ui/FormFieldsLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/FormFieldsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "title":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 44
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
