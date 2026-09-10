.class public Lcom/vkontakte/android/DocAttachView;
.super Landroid/widget/LinearLayout;
.source "DocAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static gifView:Lcom/vkontakte/android/ui/GifView;


# instance fields
.field public fileName:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/DocAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/DocAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v11, 0xe

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    const-string v5, ".gif"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkontakte/android/ui/GifView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 69
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/DocAttachView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->addView(Landroid/view/View;)V

    .line 71
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/GifView;->loadURL(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    move v8, v3

    .line 74
    .local v8, "otherView":Z
    :goto_1
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->requestLayout()V

    .line 78
    if-eqz v8, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/DocAttachView;->onClick(Landroid/view/View;)V

    goto :goto_0

    .end local v8    # "otherView":Z
    :cond_2
    move v8, v2

    .line 73
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "doc_url"

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "doc_title"

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "PhotoViewerFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_0

    .line 90
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_6

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 92
    .local v10, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/app/DownloadManager$Request;

    invoke-direct {v9, v10}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 93
    .local v9, "req":Landroid/app/DownloadManager$Request;
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_5

    .line 96
    invoke-virtual {v9, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 97
    invoke-virtual {v9}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/DownloadManager;

    .line 100
    .local v7, "mgr":Landroid/app/DownloadManager;
    invoke-virtual {v7, v9}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto/16 :goto_0

    .line 102
    .end local v7    # "mgr":Landroid/app/DownloadManager;
    .end local v9    # "req":Landroid/app/DownloadManager$Request;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 40
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 43
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    const/4 v1, 0x1

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/DocAttachView;->setMeasuredDimension(II)V

    .line 62
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 111
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    sget-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DocAttachView;->gifView:Lcom/vkontakte/android/ui/GifView;

    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/DocAttachView;->requestLayout()V

    .line 116
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "docName"    # Ljava/lang/String;
    .param p2, "dlLink"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "thumb"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    .line 46
    iput-object p2, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/DocAttachView;->fileName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/vkontakte/android/DocAttachView;->thumb:Ljava/lang/String;

    .line 49
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DocAttachView;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DocAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DocAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->setBackgroundColor(I)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DocAttachView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :cond_1
    return-void
.end method
