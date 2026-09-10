.class Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;
.super Ljava/lang/Object;
.source "OwnerVideoListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v1, 0x1

    .line 358
    iget-object v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    if-ne p3, v1, :cond_0

    :goto_0
    invoke-static {v2, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$1302(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Z)Z

    .line 359
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$500(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "q":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;->this$0:Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->access$600(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/String;)V

    .line 361
    return-void

    .line 358
    .end local v0    # "q":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 367
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
