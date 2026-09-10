.class Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ViewPager;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/ViewPager;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;->this$0:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/ViewPager;Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;-><init>(Lcom/vkontakte/android/ui/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;->this$0:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->dataSetChanged()V

    .line 1016
    return-void
.end method
