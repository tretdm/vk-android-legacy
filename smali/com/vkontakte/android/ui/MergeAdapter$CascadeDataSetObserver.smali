.class Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CascadeDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MergeAdapter;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/MergeAdapter;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/MergeAdapter;Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/vkontakte/android/ui/MergeAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MergeAdapter;->notifyDataSetChanged()V

    .line 314
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MergeAdapter;->notifyDataSetInvalidated()V

    .line 319
    return-void
.end method
