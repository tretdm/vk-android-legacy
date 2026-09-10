.class Lcom/vkontakte/android/fragments/VideoListFragment$6;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/VideoListFragment;->onAttach(Landroid/app/Activity;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/fragments/VideoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 203
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;

    move-result-object v1

    iput p3, v1, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 204
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$12(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "q":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment$6;->this$0:Lcom/vkontakte/android/fragments/VideoListFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->access$9(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/String;)V

    .line 206
    return-void
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
    .line 212
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
